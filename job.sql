use msdb
GO

--criando job

exec msdb.dbo.sp_add_job
  @job_name = 'multa emprestimo diario',
  @enabled = 1;

--executando a procedure

exec msdb.dbo.sp_add_jobstep
  @job_name = 'multa emprestimo diario',
  @step_name = 'executar todos os dias',
  @subsystem = 'TSQL',
  @command = ' EXEC Biblioteca.dbo.multa_emprestimos;',
  @database_name = 'Biblioteca';


--agendamento do job

exec msdb.dbo.sp_add_schedule
  @schedule_name = 'agendamento diario',
  @freq_type = 4,
  @freq_interval = 1,
  @active_start_time = 010000;

--associando o job ao agendamento

exec msdb.dbo.sp_attach_schedule
@job_name = 'multa emprestimo diario',
@schedule_name = 'agendamento diario'











