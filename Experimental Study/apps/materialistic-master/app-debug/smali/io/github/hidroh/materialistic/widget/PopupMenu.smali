.class public interface abstract Lio/github/hidroh/materialistic/widget/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/widget/PopupMenu$Impl;,
        Lio/github/hidroh/materialistic/widget/PopupMenu$OnMenuItemClickListener;
    }
.end annotation


# virtual methods
.method public abstract create(Landroid/content/Context;Landroid/view/View;I)Lio/github/hidroh/materialistic/widget/PopupMenu;
.end method

.method public abstract inflate(I)Lio/github/hidroh/materialistic/widget/PopupMenu;
.end method

.method public abstract setMenuItemTitle(II)Lio/github/hidroh/materialistic/widget/PopupMenu;
.end method

.method public abstract setMenuItemVisible(IZ)Lio/github/hidroh/materialistic/widget/PopupMenu;
.end method

.method public abstract setOnMenuItemClickListener(Lio/github/hidroh/materialistic/widget/PopupMenu$OnMenuItemClickListener;)Lio/github/hidroh/materialistic/widget/PopupMenu;
.end method

.method public abstract show()V
.end method
