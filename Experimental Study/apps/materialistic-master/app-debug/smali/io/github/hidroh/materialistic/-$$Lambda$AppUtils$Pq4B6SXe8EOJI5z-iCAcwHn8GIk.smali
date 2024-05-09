.class public final synthetic Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$Pq4B6SXe8EOJI5z-iCAcwHn8GIk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/github/hidroh/materialistic/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Lio/github/hidroh/materialistic/data/WebItem;

.field private final synthetic f$2:Landroidx/browser/customtabs/CustomTabsSession;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;Landroidx/browser/customtabs/CustomTabsSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$Pq4B6SXe8EOJI5z-iCAcwHn8GIk;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$Pq4B6SXe8EOJI5z-iCAcwHn8GIk;->f$1:Lio/github/hidroh/materialistic/data/WebItem;

    iput-object p3, p0, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$Pq4B6SXe8EOJI5z-iCAcwHn8GIk;->f$2:Landroidx/browser/customtabs/CustomTabsSession;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$Pq4B6SXe8EOJI5z-iCAcwHn8GIk;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$Pq4B6SXe8EOJI5z-iCAcwHn8GIk;->f$1:Lio/github/hidroh/materialistic/data/WebItem;

    iget-object v2, p0, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$Pq4B6SXe8EOJI5z-iCAcwHn8GIk;->f$2:Landroidx/browser/customtabs/CustomTabsSession;

    invoke-static {v0, v1, v2, p1}, Lio/github/hidroh/materialistic/AppUtils;->lambda$openExternal$0(Landroid/content/Context;Lio/github/hidroh/materialistic/data/WebItem;Landroidx/browser/customtabs/CustomTabsSession;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
