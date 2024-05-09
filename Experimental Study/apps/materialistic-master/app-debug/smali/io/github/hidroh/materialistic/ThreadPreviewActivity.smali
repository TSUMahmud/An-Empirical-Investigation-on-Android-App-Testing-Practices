.class public Lio/github/hidroh/materialistic/ThreadPreviewActivity;
.super Lio/github/hidroh/materialistic/InjectableActivity;
.source "ThreadPreviewActivity.java"


# static fields
.field public static final EXTRA_ITEM:Ljava/lang/String;


# instance fields
.field mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "hn"
    .end annotation
.end field

.field mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/github/hidroh/materialistic/ThreadPreviewActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_ITEM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/hidroh/materialistic/ThreadPreviewActivity;->EXTRA_ITEM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lio/github/hidroh/materialistic/InjectableActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected isDialogTheme()Z
    .locals 1

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1}, Lio/github/hidroh/materialistic/InjectableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lio/github/hidroh/materialistic/ThreadPreviewActivity;->EXTRA_ITEM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/github/hidroh/materialistic/data/Item;

    .line 46
    .local v0, "item":Lio/github/hidroh/materialistic/data/Item;
    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 48
    return-void

    .line 50
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    .line 51
    const v1, 0x7f0c0028

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 52
    const v1, 0x7f09013f

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 54
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 56
    const v1, 0x7f0900e1

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v2, Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lio/github/hidroh/materialistic/widget/SnappyLinearLayoutManager;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 58
    new-instance v2, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;

    invoke-direct {v2, p0}, Lio/github/hidroh/materialistic/widget/CommentItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 59
    new-instance v2, Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;

    iget-object v4, p0, Lio/github/hidroh/materialistic/ThreadPreviewActivity;->mItemManager:Lio/github/hidroh/materialistic/data/ItemManager;

    invoke-direct {v2, v4, v0}, Lio/github/hidroh/materialistic/widget/ThreadPreviewRecyclerViewAdapter;-><init>(Lio/github/hidroh/materialistic/data/ItemManager;Lio/github/hidroh/materialistic/data/Item;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 60
    iget-object v2, p0, Lio/github/hidroh/materialistic/ThreadPreviewActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    new-instance v4, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;

    invoke-direct {v4, v1, v3}, Lio/github/hidroh/materialistic/KeyDelegate$RecyclerViewHelper;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lio/github/hidroh/materialistic/KeyDelegate;->setScrollable(Lio/github/hidroh/materialistic/Scrollable;Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 63
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 88
    iget-object v0, p0, Lio/github/hidroh/materialistic/ThreadPreviewActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-virtual {v0, p1, p2}, Lio/github/hidroh/materialistic/KeyDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 88
    :goto_1
    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 100
    iget-object v0, p0, Lio/github/hidroh/materialistic/ThreadPreviewActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-virtual {v0, p1, p2}, Lio/github/hidroh/materialistic/KeyDelegate;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 100
    :goto_1
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 94
    iget-object v0, p0, Lio/github/hidroh/materialistic/ThreadPreviewActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-virtual {v0, p1, p2}, Lio/github/hidroh/materialistic/KeyDelegate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 94
    :goto_1
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 75
    const/4 v0, 0x1

    return v0

    .line 77
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 68
    iget-object v0, p0, Lio/github/hidroh/materialistic/ThreadPreviewActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-virtual {v0, p0}, Lio/github/hidroh/materialistic/KeyDelegate;->attach(Landroid/app/Activity;)V

    .line 69
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 82
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 83
    iget-object v0, p0, Lio/github/hidroh/materialistic/ThreadPreviewActivity;->mKeyDelegate:Lio/github/hidroh/materialistic/KeyDelegate;

    invoke-virtual {v0, p0}, Lio/github/hidroh/materialistic/KeyDelegate;->detach(Landroid/app/Activity;)V

    .line 84
    return-void
.end method
