/**
 * Created by mlmacbook on 3/10/17.
 */

$(function ()
{
    var form = $('form');
    form.submit(function (e)
    {
        var first_station = $('#first_station');
        var end_station = $('#end_station');
        if(first_station.val() == end_station.val())
        {
            $('#first_alert').show();
            $('#second_alert').show();
            return false;
        }
        else
        {
            return true;
        }
    });
});