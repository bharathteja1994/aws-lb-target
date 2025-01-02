resource "aws_lambda_permission" "allow_alb_invocation" {
  statement_id  = "AllowALBInvoke"
  action        = "lambda:InvokeFunction"
  function_name = module.lambda.function_arn
  principal     = "elasticloadbalancing.amazonaws.com"
  source_arn    = module.alb-lambda.alb_target_group_arn
}
