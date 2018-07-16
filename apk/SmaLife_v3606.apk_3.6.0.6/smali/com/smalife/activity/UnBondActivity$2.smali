.class Lcom/smalife/activity/UnBondActivity$2;
.super Ljava/lang/Object;
.source "UnBondActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/UnBondActivity;->showUnBondDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/UnBondActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/smalife/activity/UnBondActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/UnBondActivity$2;->this$0:Lcom/smalife/activity/UnBondActivity;

    iput-object p2, p0, Lcom/smalife/activity/UnBondActivity$2;->val$dialog:Landroid/app/Dialog;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v0, "unbond":Landroid/content/Intent;
    const-string v1, "AskAction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "action_key"

    .line 100
    const/16 v2, 0x10

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/smalife/activity/UnBondActivity$2;->this$0:Lcom/smalife/activity/UnBondActivity;

    invoke-virtual {v1, v0}, Lcom/smalife/activity/UnBondActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 103
    iget-object v1, p0, Lcom/smalife/activity/UnBondActivity$2;->this$0:Lcom/smalife/activity/UnBondActivity;

    invoke-virtual {v1}, Lcom/smalife/activity/UnBondActivity;->initNoticSetting()V

    .line 104
    iget-object v1, p0, Lcom/smalife/activity/UnBondActivity$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 105
    return-void
.end method
