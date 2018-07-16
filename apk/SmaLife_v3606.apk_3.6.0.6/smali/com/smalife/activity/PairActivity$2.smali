.class Lcom/smalife/activity/PairActivity$2;
.super Ljava/lang/Object;
.source "PairActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/PairActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/PairActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/PairActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/PairActivity$2;->this$0:Lcom/smalife/activity/PairActivity;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 253
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 254
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/smalife/activity/PairActivity$2;->this$0:Lcom/smalife/activity/PairActivity;

    const-class v2, Lcom/smalife/country/CountryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 255
    iget-object v1, p0, Lcom/smalife/activity/PairActivity$2;->this$0:Lcom/smalife/activity/PairActivity;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Lcom/smalife/activity/PairActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 256
    return-void
.end method
