.class public final synthetic Lio/github/hidroh/materialistic/-$$Lambda$Preferences$Observable$QVz9prPs0aP6kUC0BWf4DVQE5ak;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lio/github/hidroh/materialistic/Preferences$Observable;


# direct methods
.method public synthetic constructor <init>(Lio/github/hidroh/materialistic/Preferences$Observable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/hidroh/materialistic/-$$Lambda$Preferences$Observable$QVz9prPs0aP6kUC0BWf4DVQE5ak;->f$0:Lio/github/hidroh/materialistic/Preferences$Observable;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/github/hidroh/materialistic/-$$Lambda$Preferences$Observable$QVz9prPs0aP6kUC0BWf4DVQE5ak;->f$0:Lio/github/hidroh/materialistic/Preferences$Observable;

    invoke-static {v0, p1, p2}, Lio/github/hidroh/materialistic/Preferences$Observable;->lambda$new$0(Lio/github/hidroh/materialistic/Preferences$Observable;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
