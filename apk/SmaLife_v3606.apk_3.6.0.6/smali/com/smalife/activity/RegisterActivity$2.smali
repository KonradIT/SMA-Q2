.class Lcom/smalife/activity/RegisterActivity$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/RegisterActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/RegisterActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/RegisterActivity$2;->this$0:Lcom/smalife/activity/RegisterActivity;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$2;->this$0:Lcom/smalife/activity/RegisterActivity;

    const-class v2, Lcom/smalife/country/CountryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/smalife/activity/RegisterActivity$2;->this$0:Lcom/smalife/activity/RegisterActivity;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Lcom/smalife/activity/RegisterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 133
    return-void
.end method
