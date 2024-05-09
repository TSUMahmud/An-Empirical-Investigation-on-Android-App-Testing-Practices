.class public Lio/github/hidroh/materialistic/widget/PopupMenu$Impl;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Lio/github/hidroh/materialistic/widget/PopupMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/widget/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation


# instance fields
.field private mSupportPopupMenu:Landroidx/appcompat/widget/PopupMenu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;I)Lio/github/hidroh/materialistic/widget/PopupMenu;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "gravity"    # I

    .line 100
    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    invoke-direct {v0, p1, p2, p3}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/widget/PopupMenu$Impl;->mSupportPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    .line 101
    return-object p0
.end method

.method public inflate(I)Lio/github/hidroh/materialistic/widget/PopupMenu;
    .locals 1
    .param p1, "menuRes"    # I

    .line 106
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/PopupMenu$Impl;->mSupportPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/PopupMenu;->inflate(I)V

    .line 107
    return-object p0
.end method

.method public setMenuItemTitle(II)Lio/github/hidroh/materialistic/widget/PopupMenu;
    .locals 1
    .param p1, "itemResId"    # I
    .param p2, "title"    # I

    .line 118
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/PopupMenu$Impl;->mSupportPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 119
    return-object p0
.end method

.method public setMenuItemVisible(IZ)Lio/github/hidroh/materialistic/widget/PopupMenu;
    .locals 1
    .param p1, "itemResId"    # I
    .param p2, "visible"    # Z

    .line 112
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/PopupMenu$Impl;->mSupportPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 113
    return-object p0
.end method

.method public setOnMenuItemClickListener(Lio/github/hidroh/materialistic/widget/PopupMenu$OnMenuItemClickListener;)Lio/github/hidroh/materialistic/widget/PopupMenu;
    .locals 2
    .param p1, "listener"    # Lio/github/hidroh/materialistic/widget/PopupMenu$OnMenuItemClickListener;

    .line 124
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/PopupMenu$Impl;->mSupportPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/github/hidroh/materialistic/widget/-$$Lambda$9cneF4k9pW_DOzXxvBziH2MQZd4;

    invoke-direct {v1, p1}, Lio/github/hidroh/materialistic/widget/-$$Lambda$9cneF4k9pW_DOzXxvBziH2MQZd4;-><init>(Lio/github/hidroh/materialistic/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 125
    return-object p0
.end method

.method public show()V
    .locals 1

    .line 130
    iget-object v0, p0, Lio/github/hidroh/materialistic/widget/PopupMenu$Impl;->mSupportPopupMenu:Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    .line 131
    return-void
.end method
