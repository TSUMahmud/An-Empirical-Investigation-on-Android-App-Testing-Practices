.class public final synthetic Lio/github/hidroh/materialistic/data/-$$Lambda$ItemSyncJobService$Y0QXpE97CJMGo1T1bkbNDG7voc4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/github/hidroh/materialistic/data/SyncDelegate$ProgressListener;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/data/ItemSyncJobService;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/data/ItemSyncJobService;Ljava/lang/String;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$ItemSyncJobService$Y0QXpE97CJMGo1T1bkbNDG7voc4;->f$0:Lio/github/hidroh/materialistic/data/ItemSyncJobService;

    iput-object p2, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$ItemSyncJobService$Y0QXpE97CJMGo1T1bkbNDG7voc4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$ItemSyncJobService$Y0QXpE97CJMGo1T1bkbNDG7voc4;->f$2:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final onDone(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$ItemSyncJobService$Y0QXpE97CJMGo1T1bkbNDG7voc4;->f$0:Lio/github/hidroh/materialistic/data/ItemSyncJobService;

    iget-object v1, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$ItemSyncJobService$Y0QXpE97CJMGo1T1bkbNDG7voc4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/github/hidroh/materialistic/data/-$$Lambda$ItemSyncJobService$Y0QXpE97CJMGo1T1bkbNDG7voc4;->f$2:Landroid/app/job/JobParameters;

    invoke-static {v0, v1, v2, p1}, Lio/github/hidroh/materialistic/data/ItemSyncJobService;->lambda$onStartJob$0(Lio/github/hidroh/materialistic/data/ItemSyncJobService;Ljava/lang/String;Landroid/app/job/JobParameters;Ljava/lang/String;)V

    return-void
.end method
