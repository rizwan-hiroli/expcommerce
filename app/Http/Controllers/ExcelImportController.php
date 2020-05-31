<?php

namespace App\Http\Controllers;


use Illuminate\Routing\Controller as BaseController;
use Illuminate\Http\Request;
use Swap\Laravel\Facades\Swap;
use Excel;

class ExcelImportController extends Controller
{

	public function import(Request $request)
	{
		ini_set('max_execution_time', '-1');
        ini_set('memory_limit', -1);
        $path1 = $request->file->store('temp');
        $path = storage_path('app').'/'.$path1;
        
        $import = new \App\Imports\ExcelImport();
        $import->import($path);
        if(!empty($import->skippedRows)){
            $response = $this->exportFile($import);
        }else{
            // $response['data'] = $import->table;
            // $response['payload'] = $import->payload;
            $response['result'] = 'success';
        }
        return response()->json($response);   

    }
    

    /**
     * export error sheet. 
     * @param  [type] $import [description]
     * @return [type]         [description]
     */
    public function exportFile($import)
    {
        $export = new \App\Exports\ExcelExport($import->skippedRows);
        $filename = 'Import-Errors-'.time().'.xlsx';
        $filePath = 'uploads/Conversion';
        Excel::store($export, $filePath.'/'.$filename,'public_uploads'); 
        $file =asset($filePath.'/'.$filename);
        $response['result'] = 'failure'; 
        $response ['link'] = $file;
        return $response; 
    }


}
