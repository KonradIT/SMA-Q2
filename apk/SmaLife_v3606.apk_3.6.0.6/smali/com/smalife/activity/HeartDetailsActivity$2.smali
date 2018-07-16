.class Lcom/smalife/activity/HeartDetailsActivity$2;
.super Ljava/lang/Object;
.source "HeartDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/HeartDetailsActivity;->showAddDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/HeartDetailsActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/smalife/activity/HeartDetailsActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/HeartDetailsActivity$2;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    iput-object p2, p0, Lcom/smalife/activity/HeartDetailsActivity$2;->val$dialog:Landroid/app/Dialog;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity$2;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    invoke-static {v0}, Lcom/smalife/activity/HeartDetailsActivity;->access$1(Lcom/smalife/activity/HeartDetailsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity$2;->this$0:Lcom/smalife/activity/HeartDetailsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smalife/activity/HeartDetailsActivity;->access$2(Lcom/smalife/activity/HeartDetailsActivity;Z)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 183
    return-void
.end method
