.class Lcom/smalife/activity/RetPasswordActivity$1;
.super Ljava/lang/Object;
.source "RetPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/RetPasswordActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/RetPasswordActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/RetPasswordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/RetPasswordActivity$1;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/smalife/activity/RetPasswordActivity$1;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    .line 120
    const-class v2, Lcom/smalife/country/CountryActivity;

    .line 119
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/smalife/activity/RetPasswordActivity$1;->this$0:Lcom/smalife/activity/RetPasswordActivity;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Lcom/smalife/activity/RetPasswordActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 122
    return-void
.end method
