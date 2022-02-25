part of dart_appwrite.models;

/// Deployments List
class DeploymentList {
    /// Total number of items available on the server.
    final int sum;
    /// List of deployments.
    final List<Deployment> deployments;

    DeploymentList({
        required this.sum,
        required this.deployments,
    });

    factory DeploymentList.fromMap(Map<String, dynamic> map) {
        return DeploymentList(
            sum: map['sum'],
            deployments: List<Deployment>.from(map['deployments'].map((p) => Deployment.fromMap(p))),
        );
    }

    Map<String, dynamic> toMap() {
        return {
            "sum": sum,
            "deployments": deployments.map((p) => p.toMap()),
        };
    }
}
