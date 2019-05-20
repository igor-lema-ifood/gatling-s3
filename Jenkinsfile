def label = "faster-load-test-runner-${UUID.randomUUID().toString()}"

podTemplate(label: label,
    containers: [
        containerTemplate(
            name: 'gatling-s3',
            image: '087833863386.dkr.ecr.us-east-1.amazonaws.com/gatling-s3:3.1.2',
            envVars: [
                envVar(key: 'BUCKET_NAME', value: "faster-loadtest"),
                envVar(key: 'SIMULATION', value: "remoteconfig.LoadTest")
            ]
        )
    ],
    annotations: [
        podAnnotation(key: "iam.amazonaws.com/role", value: "Faster-Kubernetes--JenkinsSlave-ECR-RW")
    ]) {
  node(label) {

    stage("sleep") {
        sh """
            sleep(1000)
        """
    }

  }
}
