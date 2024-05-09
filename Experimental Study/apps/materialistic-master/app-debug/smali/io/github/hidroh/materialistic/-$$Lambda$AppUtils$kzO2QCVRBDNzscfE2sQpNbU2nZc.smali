.class public final synthetic Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$kzO2QCVRBDNzscfE2sQpNbU2nZc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Z

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Lio/github/hidroh/materialistic/data/WebItem;


# direct methods
.method public synthetic constructor <init>(ZLandroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$kzO2QCVRBDNzscfE2sQpNbU2nZc;->f$0:Z

    iput-object p2, p0, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$kzO2QCVRBDNzscfE2sQpNbU2nZc;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$kzO2QCVRBDNzscfE2sQpNbU2nZc;->f$2:Lio/github/hidroh/materialistic/data/WebItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$kzO2QCVRBDNzscfE2sQpNbU2nZc;->f$0:Z

    iget-object v1, p0, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$kzO2QCVRBDNzscfE2sQpNbU2nZc;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$kzO2QCVRBDNzscfE2sQpNbU2nZc;->f$2:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-static {v0, v1, v2, p1}, Lio/github/hidroh/materialistic/AppUtils;->lambda$toggleFabAction$3(ZLandroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;Landroid/view/View;)V

    return-void
.end method
