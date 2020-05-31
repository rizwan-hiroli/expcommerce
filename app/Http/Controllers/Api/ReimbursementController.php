<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Reimbursement;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Carbon\Carbon;
use Storage;

class ReimbursementController extends Controller
{


	/**
	 * Listing all reimbursement details based in date
	*/
	public function index(Request $request)
	{

		$rules = ['timestamp'=>'required|integer'];

    	$validator = Validator::make($request->all(),$rules);

    	if($validator->fails()){
    		return response()->json(['error'=>$validator->errors()->first()],400);
    	}
		
		$date = Carbon::createFromTimestamp($request->timestamp)->toDateString();
		$reimbursements = Reimbursement::whereDate('created_at',$date)->paginate(10);
		return response()->json($reimbursements);
	}


	/**
	* store reimbursement details. 
	*/	
	public function store(Request $request)
	{
		$rules = [
					'type'=>'required|numeric|between:1,5',
					'from_date'=>'sometimes|nullable|integer',
					'to_date'=>'sometimes|nullable|integer',
					'purpose'=>'sometimes|nullable|max:255',
					'mode'=>'sometimes|nullable|max:255',
					'km'=>'sometimes|nullable|integer',
					'hotel_name'=>'sometimes|nullable|max:255',
					'inv_no'=>'required|integer',
					'amount'=>'required|integer',
					'attachement'=>'required|mimes:pdf|max:10000',			
				];

    	$validator = Validator::make($request->all(),$rules);

    	if($validator->fails()){
    		return response()->json(['error'=>$validator->errors()->first()],400);
    	}

    	$fileName = now()->timestamp.'_'.$request->file('attachement')->getClientOriginalName();
    	$filePath = '/uploads/Reimbursement/'.$fileName;
        Storage::disk('public_uploads')->put($filePath, file_get_contents($request->attachement));


        $data = $this->formatInputs($request,$fileName);

    	$reimbursement = Reimbursement::create($data);

    	return response()->json(['success'=>'Data submitted successfully.']);

	}
    
    /**
     * displaying reimbursement 
    */
    public function show($id)
    {

    	$rules = ['id'=>'required|Exists:reimbursements'];

    	$validator = Validator::make(['id'=>$id],$rules);

    	if($validator->fails()){
    		return response()->json(['error'=>$validator->errors()->first()],400);
    	}

    	$reimbursement = Reimbursement::find($id);
    	return response()->json($reimbursement);
    }

    /**
     * formatting and chunking inputs.
     */
    public function formatInputs($request,$fileName)
    {
    	$fromDate = Carbon::createFromTimestamp($request->from_date)->toDateString();
        $toDate = Carbon::createFromTimestamp($request->to_date)->toDateString();

	    if($request->type > 2){
	       	$data = array_merge($request->only('type','inv_no','amount'),['attachement'=>$fileName]);
	    }if($request->type == 2){
	       	$data = array_merge($request->except('purpose','mode','km'),['attachement'=>$fileName,
	       		'from_date'=>$fromDate,'to_date'=>$toDate
	       	]);
	    }if($request->type == 1){
	       	$data = array_merge($request->except('attachement'),['attachement'=>$fileName,
	       		'from_date'=>$fromDate,'to_date'=>$toDate
	       	]);
	    }

	    return $data;
    }
}
