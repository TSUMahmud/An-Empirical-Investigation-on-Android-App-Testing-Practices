.class Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$2;
.super Ljava/lang/Object;
.source "NavFloatingActionButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;->bindNavigationPad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

.field final synthetic val$detectorCompat:Landroidx/core/view/GestureDetectorCompat;


# direct methods
.method constructor <init>(Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;Landroidx/core/view/GestureDetectorCompat;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    .line 171
    iput-object p1, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$2;->this$0:Lio/github/hidroh/materialistic/widget/NavFloatingActionButton;

    iput-object p2, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$2;->val$detectorCompat:Landroidx/core/view/GestureDetectorCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/NavFloatingActionButton$2;->val$detectorCompat:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
