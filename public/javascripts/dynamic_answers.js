function typeSelected() {
  question_type = $('select_question_type').getValue();
  if(question_type=="Text"){
    $('answer_field').hide();
  }
}

document.observe('dom:loaded', function() {
  typeSelected();
  $('select_question_type').observe('change', typeSelected);
});