class Process {
  final String pwoNo;
  final String pwoDate;
  final String client;
  final String jobName;
  final String componentName;
  final String formNo;
  final int scheduleQty;
  final int qtyProduced;
  final double? paperIssuedQty;
  final String? currentStatus;
  final String jobcardContentNo;
  final int jobBookingJobcardContentsId;
  final String processName;
  final int? processId;

  Process({
    required this.pwoNo,
    required this.pwoDate,
    required this.client,
    required this.jobName,
    required this.componentName,
    required this.formNo,
    required this.scheduleQty,
    required this.qtyProduced,
    this.paperIssuedQty,
    this.currentStatus,
    required this.jobcardContentNo,
    required this.jobBookingJobcardContentsId,
    required this.processName,
    this.processId,
  });

  factory Process.fromJson(Map<String, dynamic> json) {
    return Process(
      pwoNo: json['pwoNo']?.toString() ?? '',
      pwoDate: json['pwoDate']?.toString() ?? '',
      client: json['client']?.toString() ?? '',
      jobName: json['jobName']?.toString() ?? '',
      componentName: json['componentName']?.toString() ?? '',
      formNo: json['formNo']?.toString() ?? '',
      scheduleQty: int.tryParse(json['scheduleQty']?.toString() ?? '0') ?? 0,
      qtyProduced: int.tryParse(json['qtyProduced']?.toString() ?? '0') ?? 0,
      paperIssuedQty: json['paperIssuedQty'] == null ? null : double.tryParse(json['paperIssuedQty'].toString()),
      currentStatus: json['currentStatus']?.toString(),
      jobcardContentNo: json['jobcardContentNo']?.toString() ?? '',
      jobBookingJobcardContentsId: int.tryParse(json['jobBookingJobcardContentsId']?.toString() ?? '0') ?? 0,
      processName: json['processName']?.toString() ?? '',
      processId: json['processId'] == null ? null : int.tryParse(json['processId'].toString()),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'pwoNo': pwoNo,
      'pwoDate': pwoDate,
      'client': client,
      'jobName': jobName,
      'componentName': componentName,
      'formNo': formNo,
      'scheduleQty': scheduleQty,
      'qtyProduced': qtyProduced,
      'paperIssuedQty': paperIssuedQty,
      'currentStatus': currentStatus,
      'jobcardContentNo': jobcardContentNo,
      'jobBookingJobcardContentsId': jobBookingJobcardContentsId,
      'processName': processName,
      'processId': processId,
    };
  }

  @override
  String toString() {
    return 'Process(pwoNo: $pwoNo, client: $client, jobName: $jobName, componentName: $componentName, processName: $processName, formNo: $formNo, scheduleQty: $scheduleQty, qtyProduced: $qtyProduced)';
  }
}
