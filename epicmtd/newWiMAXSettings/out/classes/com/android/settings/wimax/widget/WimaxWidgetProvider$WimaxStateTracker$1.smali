.class Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker$1;
.super Landroid/os/AsyncTask;
.source "WimaxWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker;

.field final synthetic val$desiredState:Z

.field final synthetic val$wimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;


# direct methods
.method constructor <init>(Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker;Landroid/net/fourG/wimax/Wimax4GManager;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker$1;->this$0:Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker;

    iput-object p2, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker$1;->val$wimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    iput-boolean p3, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker$1;->val$desiredState:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 312
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .parameter "args"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker$1;->val$wimaxManager:Landroid/net/fourG/wimax/Wimax4GManager;

    iget-boolean v1, p0, Lcom/android/settings/wimax/widget/WimaxWidgetProvider$WimaxStateTracker$1;->val$desiredState:Z

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 318
    const/4 v0, 0x0

    return-object v0
.end method
