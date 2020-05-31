<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromArray;
use Maatwebsite\Excel\Concerns\WithHeadings;

class ExcelExport implements FromArray,WithHeadings
{
    /**
    * @return \Illuminate\Support\Collection
    */
    protected $records;

    public function __construct(array $records)
    {
        $this->records = $records;
    }

    public function array(): array
    {
        return $this->records;
    }

    public function headings(): array
    {

        return [
            'date',
            'employee id',
            'name',
            'working type',
            'start',
            'end',
            'store id',
            'store name',
            'error'
        ];
    }
}
