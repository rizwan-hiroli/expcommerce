<?php

namespace App\Imports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\Importable;
use Validator;
use App\Import;

class ExcelImport implements ToCollection,WithHeadingRow
{

    use Importable;

    public $skippedRows = [];

    public $fullTable = '';

    public $payload = [];

    /**
     * importing data to user table.
     * @param  Collection $rows [description]
     * @return [type]           [description]
     */
    public function collection(Collection $rows)
    {

        foreach ($rows as $key=>$row) 
        {
     
            $validator = Validator::make($row->toArray(),[
                'date'=>'required|date_format:Y-m-d',
                'employee_id'=>'required|integer',
                'name'=>'sometimes|nullable|max:255',
                'working_type'=>'required|max:255',
                'start'=>'required|max:255',
                'end'=>'required|max:255',
                'store_id'=>'required|max:255',
                'store_name'=>'sometimes|nullable|max:255',
                
            ]);

            if ($validator->fails()) {
                $row['error'] = $validator->errors()->first();
                array_push($this->skippedRows,array_filter($row->toArray()));
                continue; 
            }
            
            $userDetails = Import::create([
                                'date' => $row['date'],
                                'employee_id' => $row['employee_id'],
                                'name' => $row['name'],
                                'working_type' => $row['working_type'],
                                'start_time' => $row['start'],
                                'end_time' => $row['end'],
                                'store_id' => $row['store_id'],
                                'store_name' => $row['store_name']
                            ]);
        }


    }

}