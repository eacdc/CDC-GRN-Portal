class Machine {
  final int machineId;
  final String machineName;
  final int? departmentId;
  final int? productUnitId;

  Machine({
    required this.machineId,
    required this.machineName,
    this.departmentId,
    this.productUnitId,
  });

  factory Machine.fromJson(Map<String, dynamic> json) {
    return Machine(
      machineId: int.parse(json['machineId'].toString()),
      machineName: json['machineName'].toString(),
      departmentId: json['departmentId'] == null ? null : int.tryParse(json['departmentId'].toString()),
      productUnitId: json['productUnitId'] == null ? null : int.tryParse(json['productUnitId'].toString()),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'machineId': machineId,
      'machineName': machineName,
      'departmentId': departmentId,
      'productUnitId': productUnitId,
    };
  }

  @override
  String toString() {
    return 'Machine(machineId: $machineId, machineName: $machineName, departmentId: $departmentId, productUnitId: $productUnitId)';
  }
}
