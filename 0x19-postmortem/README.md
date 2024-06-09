### Issue Summary

**Duration of the Outage:**  
Start Time: June 8, 2024, 09:15 UTC  
End Time: June 8, 2024, 11:00 UTC  

**Impact:**  
The authentication service for the Mela Financial System was completely unavailable, preventing users from logging into their accounts. Approximately 90% of users were affected, experiencing either login failures or significantly delayed authentication responses.

**Root Cause:**  
A bug in the recent deployment of the authentication microservice caused an unexpected failure in the token validation logic, leading to all authentication requests being rejected.

### Timeline

- **09:15 UTC**: Issue detected through automated monitoring alerts indicating a sharp increase in failed authentication attempts.
- **09:17 UTC**: Alert investigated by on-call engineer Wondwosen Asegid, who confirmed the issue through the monitoring dashboard.
- **09:25 UTC**: Initial hypothesis was a potential network issue affecting the authentication microservice.
- **09:30 UTC**: Misleading path: Network team found no anomalies in network traffic.
- **09:35 UTC**: Incident escalated to the authentication team.
- **09:45 UTC**: Authentication team identified recent deployment as a potential cause.
- **10:00 UTC**: Rollback of the recent deployment initiated; partial restoration of authentication service observed.
- **10:20 UTC**: Full functionality restored after further investigation and correction of the token validation logic.
- **11:00 UTC**: All systems confirmed stable.

### Root Cause and Resolution

**Root Cause:**  
A recent deployment of the authentication microservice introduced a bug in the token validation logic. The bug caused the microservice to incorrectly invalidate all authentication tokens, resulting in a failure to authenticate users.

**Resolution:**  
The authentication team, led by Wondwosen Asegid, rolled back the recent deployment to the last known stable version. Further investigation identified the specific bug in the token validation logic, which was then corrected. A patch was deployed after rigorous testing, and the authentication service was fully restored.

### Corrective and Preventative Measures

**Improvements/Fixes:**
- Enhance pre-deployment testing procedures to include more comprehensive validation of authentication logic.
- Implement automated rollback mechanisms for service deployments.
- Increase monitoring on authentication metrics to detect anomalies earlier.

**Task List:**
1. **Patch Authentication Microservice**: Ensure the bug in the token validation logic is fixed and tested thoroughly.
2. **Add Monitoring**: Enhance monitoring to include detailed metrics on authentication success rates and token validation processes.
3. **Automated Rollbacks**: Develop and implement automated rollback procedures for microservice deployments.
4. **Stress Testing**: Conduct stress tests on the authentication service to understand the impact of changes under load.
5. **Training**: Provide additional training for the authentication team on deployment best practices and debugging techniques.
6. **Incident Response Plan**: Update incident response protocols to include steps for faster identification and rollback of faulty deployments.

These measures will help prevent similar incidents in the future and improve the overall reliability of the Mela Financial System's authentication service.
