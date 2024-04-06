# anon-infra-funtimes
houses some web3 funtimes

## Summarized Requirements

1. **Containerization**: Utilize the specified container from the Phylax documentation.
2. **Resource Isolation**: Set resource limits for each container to manage resource allocation and ensure equitable distribution.
3. **Network Isolation**: Ensure containers are segregated from one another and the host, with access restricted to API endpoints.
4. **API Access**: Facilitate secure API endpoint access for containers using unique API tokens for users.
5. **Internet Access**: Provide internet connectivity for containers to support external application requirements.
6. **Cloud Agnostic**: Ensure the deployment is adaptable to various cloud environments or on-premises setups using IaC principles.
7. **Documentation**: Offer detailed documentation covering design choices, deployment steps, and essential configurations or instructions.
8. **Environment Variables**: Support container-specific environment variables accessible within the container.


## Summarized Deliverables

1. **Design Document**: A comprehensive document detailing the solution's design, architecture, and components, explaining the reasoning for key decisions and any trade-offs.
2. **IaC Code**: A GitHub repository with modular, well-documented Infrastructure as Code scripts for setting up the Phylax containers, adhering to best practices.
3. **Deployment Instructions**: Documentation in the repository detailing the deployment process, prerequisites, configurations, and any manual steps needed.


## Evaluation Criteria

Your submission will be evaluated based on the following criteria:

1. **Correctness**: The proposed solution should meet all the stated requirements and function as expected.
2. **Design**: The design should be well-thought-out, scalable, and follow best practices for container deployments and resource isolation.
3. **Code Quality**: The IaC code should be well-structured, modular, and adhere to coding standards and best practices for the chosen IaC tool.
4. **Documentation**: The documentation should be clear, comprehensive, and provide sufficient information for understanding and deploying the solution.
5. **Cloud Agnosticism**: The solution should be cloud-agnostic and deployable across different cloud providers or on-premises environments.
6. **Security**: The solution should incorporate appropriate security measures, such as secure API access and network isolation.
7. **Automation**: The solution should be automated as much as possible, minimizing the need for manual intervention during deployment and management.