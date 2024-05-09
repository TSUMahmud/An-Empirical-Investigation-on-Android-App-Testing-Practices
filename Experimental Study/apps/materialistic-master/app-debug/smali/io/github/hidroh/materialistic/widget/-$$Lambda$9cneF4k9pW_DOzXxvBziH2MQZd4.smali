.class public final synthetic Lio/github/hidroh/materialistic/widget/-$$Lambda$9cneF4k9pW_DOzXxvBziH2MQZd4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/widget/PopupMenu$OnMenuItemClickListener;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$9cneF4k9pW_DOzXxvBziH2MQZd4;->f$0:Lio/github/hidroh/materialistic/widget/PopupMenu$OnMenuItemClickListener;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/-$$Lambda$9cneF4k9pW_DOzXxvBziH2MQZd4;->f$0:Lio/github/hidroh/materialistic/widget/PopupMenu$OnMenuItemClickListener;

    invoke-interface {v0, p1}, Lio/github/hidroh/materialistic/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
