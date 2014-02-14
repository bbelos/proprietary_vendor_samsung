.class Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode$1;
.super Landroid/content/BroadcastReceiver;
.source "wimaxwtmmode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode$1;->this$0:Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.samsungtest.wimaxtest.WTM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 49
    const-string v1, "WTM"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, nValue:Ljava/lang/String;
    const-string v1, "STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_20

    .line 52
    iget-object v1, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode$1;->this$0:Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;

    invoke-virtual {v1}, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->Wimaxpoweroff()V

    .line 57
    .end local v0           #nValue:Ljava/lang/String;
    :cond_1f
    :goto_1f
    return-void

    .line 53
    .restart local v0       #nValue:Ljava/lang/String;
    :cond_20
    const-string v1, "RFSTART"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, "CERSTART"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1f

    .line 54
    :cond_30
    iget-object v1, p0, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode$1;->this$0:Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/wimax/wimaxwtm/wimaxwtmmode;->ChangeMode(I)V

    goto :goto_1f
.end method
