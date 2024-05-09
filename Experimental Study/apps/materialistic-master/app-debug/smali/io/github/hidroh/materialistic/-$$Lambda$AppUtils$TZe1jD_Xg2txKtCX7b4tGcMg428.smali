.class public final synthetic Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$TZe1jD_Xg2txKtCX7b4tGcMg428;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$TZe1jD_Xg2txKtCX7b4tGcMg428;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1

    iget-object v0, p0, Lio/github/hidroh/materialistic/-$$Lambda$AppUtils$TZe1jD_Xg2txKtCX7b4tGcMg428;->f$0:Landroid/content/Context;

    invoke-static {v0, p1}, Lio/github/hidroh/materialistic/AppUtils;->lambda$registerAccountsUpdatedListener$2(Landroid/content/Context;[Landroid/accounts/Account;)V

    return-void
.end method
