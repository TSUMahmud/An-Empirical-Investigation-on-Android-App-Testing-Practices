.class public interface abstract Lio/github/hidroh/materialistic/AlertDialogBuilder;
.super Ljava/lang/Object;
.source "AlertDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/hidroh/materialistic/AlertDialogBuilder$Impl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Dialog;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract create()Landroid/app/Dialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract init(Landroid/content/Context;)Lio/github/hidroh/materialistic/AlertDialogBuilder;
.end method

.method public abstract setMessage(I)Lio/github/hidroh/materialistic/AlertDialogBuilder;
.end method

.method public abstract setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;
.end method

.method public abstract setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;
.end method

.method public abstract setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;
.end method

.method public abstract setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;
.end method

.method public abstract setTitle(I)Lio/github/hidroh/materialistic/AlertDialogBuilder;
.end method

.method public abstract setView(Landroid/view/View;)Lio/github/hidroh/materialistic/AlertDialogBuilder;
.end method

.method public abstract show()Landroid/app/Dialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
