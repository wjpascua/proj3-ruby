create or replace function addSurvey(_surv_name text, _qtext1 text, _qtext2 text, _qtext3 text, _qtext4 text, _qtext5 text)
   returns boolean as
   $func$
      declare
         v_sid integer;
      begin
         insert into surveys (surveyname) values _surv_name;
         v_sid := currval ('survey_id_seq');
         perform addQuestion (v_sid, _qtext1);
         perform addQuestion (v_sid, _qtext2);
         perform addQuestion (v_sid, _qtext3);
         perform addQuestion (v_sid, _qtext4);
         perform addQuestion (v_sid, _qtext5);
         return 't';
      end;
   $func$
   language 'plpgsql';
