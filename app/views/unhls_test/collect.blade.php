@extends("layout")
@section("content")
	<div>
		<ol class="breadcrumb">
		  <li><a href="{{{URL::route('user.home')}}}">{{trans('messages.home')}}</a></li>
		  <li><a href="{{ URL::route('unhls_test.index') }}">{{ Lang::choice('messages.test',2) }}</a></li>
		  <li class="active">{{trans('messages.collect-specimen')}}</li>
		</ol>
	</div>
	<div class="panel panel-primary">
		<div class="panel-heading ">
            <div class="container-fluid">
                <div class="row less-gutter">
                    <div class="col-md-11">
						<span class="glyphicon glyphicon-filter"></span>{{trans('messages.specimen-collected-by')}}
                    </div>
                    <div class="col-md-1">
                        <a class="btn btn-sm btn-primary pull-right" href="#" onclick="window.history.back();return false;"
                            alt="{{trans('messages.back')}}" title="{{trans('messages.back')}}">
                            <span class="glyphicon glyphicon-backward"></span></a>
                    </div>
                </div>
            </div>
		</div>
		<div class="panel-body">
		<!-- if there are creation errors, they will show here -->
		@if($errors->all())
			<div class="alert alert-danger">
				{{ HTML::ul($errors->all()) }}
			</div>
		@endif
		{{ Form::open(array('route' => 'unhls_test.collectSpecimenAction')) }}
		{{Form::hidden('specimen_id', $test->specimen->id)}}
		<div class="container-fluid">
		<div class="panel-body">
				<div class="panel display-details row">
					<div class="col-md-3"><p><strong>Patient Name</strong>{{$test->visit->patient->name}}</p>
					</div>
					<div class="col-md-3">
					    <p><strong>{{ Lang::choice('messages.test-type',1) }}</strong>
					        {{$test->testType->name}}</p>
				    </div>
				    <div class="col-md-3">
					    <p><strong>{{trans('messages.specimen-type-title')}}</strong>
					        {{$test->specimen->specimenType->name}}</p>
					    </div>
				    <div class="col-md-3">
				    	<p><strong>{{trans('messages.specimen-number-title')}}</strong>
				        	{{$test->specimen->id}}
				    	</p>
					</div>
				</div>
			</div>
			
			<div class="panel-body">

				<div class="form-group">
					<div class="col-sm-2">
						{{ Form::label('sample_time', 'Date/ Time of Sample Collection') }}
					</div>
					<div class="col-sm-3">
						<input class="form-control"
							data-format="YYYY-MM-DD HH:mm"
							data-template="DD / MM / YYYY HH : mm"
							name="collection_date"
							type="text"
							id="collection-date"
							value="{{$collectionDate}}">
					</div>
					
				</div>
				<div class="form-group">
					<div class="col-sm-2">
						{{ Form::label('sample_obtainer', 'Sample Collected by') }}
					</div>
					<div class="col-sm-2">
						{{Form::text('sample_obtainer', Auth::user()->name, array('class' => 'form-control'))}}
					</div>
				<div class="col-sm-4">
					{{ Form::label('cadre_obtainer', 'Cadre') }}
					{{Form::text('cadre_obtainer', Auth::user()->designation, array('class' => 'form-control'))}}
				</div>
				</div>
					<div class="col-sm-2">
						{{Form::label('reception_date', 'Date/Time Sample was Received in Lab')}}
					</div>
					<div class="col-sm-3">
						<input class="form-control"
							data-format="YYYY-MM-DD HH:mm"
							data-template="DD / MM / YYYY HH : mm"
							name="reception_date"
							type="text"
							id="reception-date"
							value="{{$receptionDate}}">
					</div>
					<div class="form-group">
						<div class="col-sm-2">
							{{ Form::label('sample_reciever', 'Sample Recieved by') }}
						</div>
						<div class="col-sm-2">
						{{Form::text('sample_reciever', Auth::user()->name, array('class' => 'form-control'))}}</div>
						<div class="col-sm-4">
							{{ Form::label('cadre_reciever', 'Cadre') }}
							{{Form::text('cadre_reciever', Auth::user()->designation, array('class' => 'form-control'))}}
						</div>
					<div class="form-group actions-row">
						{{ Form::button("<span class='glyphicon glyphicon-save'></span> ".trans('messages.save'),
							['class' => 'btn btn-primary', 'onclick' => 'submit()']) }}
					</div>
				</div>
			</div>
		{{ Form::close() }}
		</div>
	</div>
@stop