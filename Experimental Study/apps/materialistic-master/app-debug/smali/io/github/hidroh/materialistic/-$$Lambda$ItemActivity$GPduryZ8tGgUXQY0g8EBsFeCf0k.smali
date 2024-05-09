.class public final synthetic Lio/github/hidroh/materialistic/-$$Lambda$ItemActivity$GPduryZ8tGgUXQY0g8EBsFeCf0k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/ItemActivity;

.field private final synthetic f$1:Lio/github/hidroh/materialistic/data/WebItem;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/ItemActivity;Lio/github/hidroh/materialistic/data/WebItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/-$$Lambda$ItemActivity$GPduryZ8tGgUXQY0g8EBsFeCf0k;->f$0:Lio/github/hidroh/materialistic/ItemActivity;

    iput-object p2, p0, Lio/github/hidroh/materialistic/-$$Lambda$ItemActivity$GPduryZ8tGgUXQY0g8EBsFeCf0k;->f$1:Lio/github/hidroh/materialistic/data/WebItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lio/github/hidroh/materialistic/-$$Lambda$ItemActivity$GPduryZ8tGgUXQY0g8EBsFeCf0k;->f$0:Lio/github/hidroh/materialistic/ItemActivity;

    iget-object v1, p0, Lio/github/hidroh/materialistic/-$$Lambda$ItemActivity$GPduryZ8tGgUXQY0g8EBsFeCf0k;->f$1:Lio/github/hidroh/materialistic/data/WebItem;

    invoke-static {v0, v1, p1}, Lio/github/hidroh/materialistic/ItemActivity;->lambda$bindData$2(Lio/github/hidroh/materialistic/ItemActivity;Lio/github/hidroh/materialistic/data/WebItem;Landroid/view/View;)V

    return-void
.end method
