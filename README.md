# QoC Measurement
Quality of Cybersecurity PCA analysis R files

## Dimensions
| Likert scale                         | Strongly Negative | Negative | Somewhat Negative | Neutral               | Somewhat Positive | Positive                   | Strongly Positive              |
| ------------------------------------ | ----------------- | -------- | ----------------- | --------------------- | ----------------- | -------------------------- | ------------------------------ |
| Risk Impact Financial                | Not measured      | High     | High              | Med                   | Med               | Low                        | Low                            |
| Risk Impact Operational              | Not measured      | High     | High              | Med                   | Med               | Low                        | Low                            |
| Risk Impact Reputational             | Not measured      | High     | High              | Med                   | Med               | Low                        | Low                            |
| Risk Impact Regulatory               | Not measured      | High     | High              | Med                   | Med               | Low                        | Low                            |
| Risk Critical                        | Not measured      | 75-100%  | 50-75%            | 25-50%                | 10-25%            | 5-10%                      | 0-5%                           |
| Risk High                            | Not measured      | 75-100%  | 50-75%            | 25-50%                | 10-25%            | 5-10%                      | 0-5%                           |
| Risk Medium                          | Not measured      | 75-100%  | 50-75%            | 25-50%                | 10-25%            | 5-10%                      | 0-5%                           |
| Risk Low                             | Not measured      | 75-100%  | 50-75%            | 25-50%                | 10-25%            | 5-10%                      | 0-5%                           |
| Risk Management Maturity             | Not measured      | Low      | Low               | Med                   | Med               | High                       | High                           |
| MTTD                                 | No detection      | 1 year   | 1 month           | 1 week                | 1 day             | 1 hour                     | under and hour                 |
| MTTR                                 | No response       | 1 year   | 1 month           | 1 week                | 1 day             | 1 hour                     | under and hour                 |
| Vulnerability Critical               | Not measured      | 2+       | 1                 | 1                     | 0                 | 0                          | 0                              |
| Vulnerability High                   | Not measured      | 5+       | 2-4               | 1                     | 0                 | 0                          | 0                              |
| Vulnerability Medium                 | Not measured      | 10+      | 5-9               | 2-4                   | 1                 | 0                          | 0                              |
| Vulnerability Low                    | Not measured      | 20+      | 10-19             | 5-9                   | 2-4               | 1                          | 0                              |
| Cybersecurity % of IT Budget         | Not measured      | 0        | 0.001-.01         | 0.01-0.05             | 0.05-0.1          | 1-2                        | 2+                             |
| Security staff per 1000              | Not measured      | 0        | 1-2               | 2-3                   | 3-4               | 5-10                       | 10+                            |
| Security Team                        | Not measured      | 1 role   | 2 roles           | 3-5 roles             | multiple roles    | multiple roles + managment | multiple roles + c-suite       |
| Coverage                             | Not measured      | None     | Part time         | Part time + 3rd party | Working hours     | Working hours + 3rd party  | 24/7 coverage                  |
| Last Awreness Training               | Not measured      | 5+ years | 2-5 years         | 2 years               | last year         | 3-6 months                 | 3 months                       |
| Awareness Assessment                 | Not measured      | 0-30%    | 30-50%            | 50-75%                | 75-85%            | 85-95%                     | 95-100%                        |
| Training Participation               | Not measured      | 0-10%    | 10-30%            | 30-60%                | 60-70%            | 70-80%                     | 90-100%                        |
| Compliance                           | Not measured      | Low      | Low               | Med                   | Med               | High                       | High                           |
| Security Effectiveness               | Not measured      | Low      | Low               | Med                   | Med               | High                       | High                           |
| Security Posture                     | Not measured      | Low      | Low               | Med                   | Med               | High                       | High                           |
| Staff Compliance                     | Not measured      | Low      | Low               | Med                   | Med               | High                       | High                           |
| Incident Response Plan Effectiveness | Not measured      | Low      | Low               | Med                   | Med               | High                       | High                           |
| Framework                            | Not measured      | None     | Partial           | Completed             | Audited           | More than one audited      | More than one more than 1 year |


## Use of Polychoric correlation
In the QoC_test_survey file this first level of analysis is to use the polychoric function from the psych library.  Then the matrix data is used in the prcomp function from the polycor library and the PCA results are displayed using the autoplot function of the ggfortify library and the standard screeplot function.
