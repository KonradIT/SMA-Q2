.class Lcom/smalife/activity/MessageSetActivity$3;
.super Ljava/lang/Object;
.source "MessageSetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/activity/MessageSetActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/MessageSetActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/MessageSetActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/MessageSetActivity$3;->this$0:Lcom/smalife/activity/MessageSetActivity;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/smalife/activity/MessageSetActivity$3;->this$0:Lcom/smalife/activity/MessageSetActivity;

    invoke-virtual {v0}, Lcom/smalife/activity/MessageSetActivity;->finish()V

    .line 63
    return-void
.end method
