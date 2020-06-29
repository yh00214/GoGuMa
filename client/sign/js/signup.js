
(function ($) {
	
	$('form').on('submit',function(event){
	
		var val_username = $('input[name=name]').val(); //사용자 이름
		var val_email = $('input[name=email]').val(); //이메일 주소
		var val_pass = $('input[name=pass]').val(); //비밀번호
		var val_type = $('input[name=radio-group]:checked').val(); //일반계청인지 임대인인지
		//general이면 일반계정 renter이면 임대인 계정
		
		console.log(val_username);
		console.log(val_email);
		console.log(val_pass);
		console.log(val_type);
		
	});
	
//    "use strict";
//
//    /*==================================================================
//    [ Validate after type ]*/
//    $('.validate-input .input100').each(function(){
//        $(this).on('blur', function(){
//            if(validate(this) == false){
//                showValidate(this);
//            }
//            else {
//                $(this).parent().addClass('true-validate');
//            }
//        })    
//    })
//  
//  
//    /*==================================================================
//    [ Validate ]*/
//    var input = $('.validate-input .input100'); //들어온 값
//
//    $('.validate-form').on('submit',function(){
//        var check = true;
//
//        for(var i=0; i<input.length; i++) {
//            if(validate(input[i]) == false){
//                showValidate(input[i]);
//                check=false;
//            }
//        }
//
//        return check;
//    });
//
//
//    $('.validate-form .input100').each(function(){
//        $(this).focus(function(){
//           hideValidate(this);
//           $(this).parent().removeClass('true-validate');
//        });
//    });
//
//     function validate (input) {
//        if($(input).attr('type') == 'email' || $(input).attr('name') == 'email') {
//            if($(input).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
//                return false;
//            }
//        }
//        else {
//            if($(input).val().trim() == ''){
//                return false;
//            }
//        }
//    }
//
//    function showValidate(input) {
//        var thisAlert = $(input).parent();
//
//        $(thisAlert).addClass('alert-validate');
//
//        $(thisAlert).append('<span class="btn-hide-validate">&#xf135;</span>')
//        $('.btn-hide-validate').each(function(){
//            $(this).on('click',function(){
//               hideValidate(this);
//            });
//        });
//    }
//
//    function hideValidate(input) {
//        var thisAlert = $(input).parent();
//        $(thisAlert).removeClass('alert-validate');
//        $(thisAlert).find('.btn-hide-validate').remove();
//    }
//    
//    

})(jQuery);