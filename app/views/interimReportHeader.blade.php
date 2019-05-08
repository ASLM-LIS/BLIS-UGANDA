@section ("interimReportHeader")
<style type="text/css">
     table {
        padding: 2px;
     }
</style>



    <table style="padding: 0px;" >
        
            <tr>
                <td colspan="12"></td>
            </tr>
    </table>
    <table style="text-align:center;" >
            <tr>
                 <td colspan="12" style="text-align:center;">

                   {{ @HTML::image(Config::get('kblis.rhsp-logo'),  Config::get('kblis.country') . trans('messages.court-of-arms'), array('width' => '650px')) }}
                </td>
            </tr>
            <tr><td colspan="12" style="text-align:center;">{{Config::get('kblis.interim-report-name')}}</td></tr>

            
        
    </table>

    <br>
    <br>
    <table style="border-bottom: 1px solid #cecfd5; font-size:8px;font-family: 'Courier New',Courier;">
    <tr>
        <td width="15%"><strong>Patient ID</strong>:</td>
        <td width="55%" style="text-align:left; ">{{ $patient->ulin}}</td>

        <td width="15%"><strong>{{ trans('messages.report-date')}}</strong>:</td>
        <td width="15%" style="text-align:left;">{{ date('d-m-Y') }}</td>

    </tr>
</table>

     <br>
    <br>

@show
