.class Lcom/samsung/wimax/napid/EapNodeName$4;
.super Ljava/lang/Object;
.source "EapNodeName.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/EapNodeName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/wimax/napid/EapNodeName;


# direct methods
.method constructor <init>(Lcom/samsung/wimax/napid/EapNodeName;)V
    .registers 2
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/samsung/wimax/napid/EapNodeName$4;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName$4;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    iget-object v0, v0, Lcom/samsung/wimax/napid/EapNodeName;->eapText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/samsung/wimax/napid/EapNodeName$4;->this$0:Lcom/samsung/wimax/napid/EapNodeName;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/wimax/napid/EapNodeName;->dismissDialog(I)V

    .line 401
    return-void
.end method
