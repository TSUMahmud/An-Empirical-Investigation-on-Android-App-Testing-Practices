.class final Lio/github/hidroh/materialistic/AppUtils$3;
.super Ljava/lang/Object;
.source "AppUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/hidroh/materialistic/AppUtils;->showAccountChooser(Landroid/content/Context;Lio/github/hidroh/materialistic/AlertDialogBuilder;[Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private selection:I

.field final synthetic val$accounts:[Landroid/accounts/Account;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$initialSelection:I

.field final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(ILandroid/content/Context;[Ljava/lang/String;[Landroid/accounts/Account;)V
    .locals 0

    .line 398
    iput p1, p0, Lio/github/hidroh/materialistic/AppUtils$3;->val$initialSelection:I

    iput-object p2, p0, Lio/github/hidroh/materialistic/AppUtils$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lio/github/hidroh/materialistic/AppUtils$3;->val$items:[Ljava/lang/String;

    iput-object p4, p0, Lio/github/hidroh/materialistic/AppUtils$3;->val$accounts:[Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iget p1, p0, Lio/github/hidroh/materialistic/AppUtils$3;->val$initialSelection:I

    iput p1, p0, Lio/github/hidroh/materialistic/AppUtils$3;->selection:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 403
    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    .line 431
    iput p2, p0, Lio/github/hidroh/materialistic/AppUtils$3;->selection:I

    goto :goto_1

    .line 405
    :pswitch_0
    iget-object v1, p0, Lio/github/hidroh/materialistic/AppUtils$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lio/github/hidroh/materialistic/AppUtils$3;->val$items:[Ljava/lang/String;

    iget v3, p0, Lio/github/hidroh/materialistic/AppUtils$3;->selection:I

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lio/github/hidroh/materialistic/Preferences;->setUsername(Landroid/content/Context;Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lio/github/hidroh/materialistic/AppUtils$3;->val$context:Landroid/content/Context;

    const v2, 0x7f10019a

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lio/github/hidroh/materialistic/AppUtils$3;->val$items:[Ljava/lang/String;

    iget v4, p0, Lio/github/hidroh/materialistic/AppUtils$3;->selection:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 407
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 410
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 411
    goto :goto_1

    .line 413
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lio/github/hidroh/materialistic/AppUtils$3;->val$context:Landroid/content/Context;

    const-class v3, Lio/github/hidroh/materialistic/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 414
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lio/github/hidroh/materialistic/LoginActivity;->EXTRA_ADD_ACCOUNT:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 415
    iget-object v0, p0, Lio/github/hidroh/materialistic/AppUtils$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 416
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 417
    goto :goto_1

    .line 419
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    iget v0, p0, Lio/github/hidroh/materialistic/AppUtils$3;->selection:I

    if-gez v0, :cond_0

    .line 420
    goto :goto_1

    .line 422
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 423
    iget-object v0, p0, Lio/github/hidroh/materialistic/AppUtils$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/AppUtils$3;->val$accounts:[Landroid/accounts/Account;

    iget v3, p0, Lio/github/hidroh/materialistic/AppUtils$3;->selection:I

    aget-object v1, v1, v3

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    .line 426
    :cond_1
    iget-object v0, p0, Lio/github/hidroh/materialistic/AppUtils$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lio/github/hidroh/materialistic/AppUtils$3;->val$accounts:[Landroid/accounts/Account;

    iget v3, p0, Lio/github/hidroh/materialistic/AppUtils$3;->selection:I

    aget-object v1, v1, v3

    invoke-virtual {v0, v1, v2, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 428
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 429
    nop

    .line 434
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
