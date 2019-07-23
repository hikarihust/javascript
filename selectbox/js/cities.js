$(document).ready(function() {
  var cityObj, districtObj, wardObj;
  $.ajax({
          url: 'files/getdata.php',
          type: 'POST',
          dataType: 'json'
        }).done(function(data) {
          cityObj = data.cities;
          districtObj = data.district;
          wardObj = data.ward;
          addData("#city", cityObj, '-- Select a City --', '*');
        });

  $('#city').change(function() {
    var cityID = $(this).find(':selected').val();
    addData("#district", districtObj, '-- Select a District --', cityID);
  });

  $('#district').change(function() {
    var districtID = $(this).find(':selected').val();
    addData("#ward", wardObj, '-- Select a Ward --', districtID);
  });
});

function addData(selector, dataObj, text, parentID) {
  $(selector).empty();
  $(selector).append('<option value="0">'+ text +'</option>');
  if (parentID === '*') {
    var optObj = dataObj;
  } else if(parentID > 0) {
    var optObj = dataObj[parentID];
  }

  if(optObj && (optObj.length > 0)) {
    $.each(optObj, function(i, val) {
      var opt = '<option value="'+ val.id +'">'+ val.name +'</option>';
      $(selector).append(opt);
    });
  }
}