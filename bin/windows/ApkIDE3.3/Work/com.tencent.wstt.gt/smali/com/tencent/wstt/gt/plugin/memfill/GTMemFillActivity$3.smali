.class Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$3;
.super Ljava/lang/Object;
.source "GTMemFillActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->onFillStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;


# direct methods
.method constructor <init>(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$3;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 113
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$3;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->tv_switch:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->access$3(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 114
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$3;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;

    # getter for: Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->tv_switch:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->access$3(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$3;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;

    const v2, 0x7f0900df

    invoke-virtual {v1, v2}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$3;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;

    iget-object v1, p0, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity$3;->this$0:Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;

    .line 117
    const-string v2, "Filling.."

    const-string v3, "filling..wait...."

    .line 116
    invoke-static {v1, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;->access$4(Lcom/tencent/wstt/gt/plugin/memfill/GTMemFillActivity;Landroid/app/ProgressDialog;)V

    .line 118
    return-void
.end method