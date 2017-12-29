#!/usr/bin/env groovy

pipeline {
    agent none
    options {
        ansiColor('xterm')
    }
    parameters {
        string(name: 'JENKINS_SLAVE_LABEL',
            defaultValue: 'none',
            description: 'Specify the label of jenkins slave to run.')
    }
    stages {
        stage('Setup Environment') {
            agent {
                label "${params.JENKINS_SLAVE_LABEL}"
            }
            steps {
                script {
                    sh './run.sh'
                }
            }
        }
    }
}
