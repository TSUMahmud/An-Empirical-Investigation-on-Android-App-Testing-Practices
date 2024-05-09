.class public Lio/github/hidroh/materialistic/AlertDialogBuilder$Impl;
.super Ljava/lang/Object;
.source "AlertDialogBuilder.java"

# interfaces
.implements Lio/github/hidroh/materialistic/AlertDialogBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/hidroh/materialistic/AlertDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/github/hidroh/materialistic/AlertDialogBuilder<",
        "Landroidx/appcompat/app/AlertDialog;",
        ">;"
    }
.end annotation


# instance fields
.field private mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    return-void
.end method


# virtual methods
.method public bridge synthetic create()Landroid/app/Dialog;
    .locals 1

    .line 134
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/AlertDialogBuilder$Impl;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public create()Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 192
    iget-object v0, p0, Lio/github/hidroh/materialistic/AlertDialogBuilder$Impl;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)Lio/github/hidroh/materialistic/AlertDialogBuilder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 142
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/github/hidroh/materialistic/AlertDialogBuilder$Impl;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 143
    return-object p0
.end method

.method public setMessage(I)Lio/github/hidroh/materialistic/AlertDialogBuilder;
    .locals 1
    .param p1, "messageId"    # I

    .line 154
    iget-object v0, p0, Lio/github/hidroh/materialistic/AlertDialogBuilder$Impl;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 155
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 173
    iget-object v0, p0, Lio/github/hidroh/materialistic/AlertDialogBuilder$Impl;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 174
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 186
    iget-object v0, p0, Lio/github/hidroh/materialistic/AlertDialogBuilder$Impl;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 187
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 180
    iget-object v0, p0, Lio/github/hidroh/materialistic/AlertDialogBuilder$Impl;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 181
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lio/github/hidroh/materialistic/AlertDialogBuilder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 166
    iget-object v0, p0, Lio/github/hidroh/materialistic/AlertDialogBuilder$Impl;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 167
    return-object p0
.end method

.method public setTitle(I)Lio/github/hidroh/materialistic/AlertDialogBuilder;
    .locals 1
    .param p1, "titleId"    # I

    .line 148
    iget-object v0, p0, Lio/github/hidroh/materialistic/AlertDialogBuilder$Impl;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 149
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lio/github/hidroh/materialistic/AlertDialogBuilder;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 160
    iget-object v0, p0, Lio/github/hidroh/materialistic/AlertDialogBuilder$Impl;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 161
    return-object p0
.end method

.method public bridge synthetic show()Landroid/app/Dialog;
    .locals 1

    .line 134
    invoke-virtual {p0}, Lio/github/hidroh/materialistic/AlertDialogBuilder$Impl;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public show()Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 197
    iget-object v0, p0, Lio/github/hidroh/materialistic/AlertDialogBuilder$Impl;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
