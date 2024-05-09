.class public final synthetic Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$ULSEgPBF1L6WG_YXzbN0TEOSea8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/github/hidroh/materialistic/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Lio/github/hidroh/materialistic/data/WebItem;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$ULSEgPBF1L6WG_YXzbN0TEOSea8;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$ULSEgPBF1L6WG_YXzbN0TEOSea8;->f$1:Lio/github/hidroh/materialistic/data/WebItem;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$ULSEgPBF1L6WG_YXzbN0TEOSea8;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$ULSEgPBF1L6WG_YXzbN0TEOSea8;->f$1:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-static {v0, v1, p1}, Lio/github/hidroh/materialistic/AppUtils;->lambda$share$1(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
