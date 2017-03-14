$(document).ready(function()
    {
        var top_seats = $('#top_seats_group');
        var bottom_seats = $('#bottom_seats_group');
        var side_top_seats = $('#side_top_seats_group');
        var side_bottom_seats = $('#side_bottom_seats_group');
        var seated_seats = $('#seated_seats_group');
        var form_groups = $('.form-group:not(:first)');

        $('#car_type').change(function ()
        {
            var type = $(this).val();
            form_groups.hide();
            switch(type)
            {
                case 'CoupeCar':
                    top_seats.show();
                    bottom_seats.show();
                    break;
                case 'EconomyCar':
                    top_seats.show();
                    bottom_seats.show();
                    side_top_seats.show();
                    side_bottom_seats.show();
                    break;
                case 'SVCar':
                    bottom_seats.show();
                    break;
                case 'SeatedCar':
                    seated_seats.show();
                    break;
            }
        });
    }
);
