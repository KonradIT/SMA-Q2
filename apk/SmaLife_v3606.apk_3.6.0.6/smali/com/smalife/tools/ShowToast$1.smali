.class Lcom/smalife/tools/ShowToast$1;
.super Ljava/lang/Object;
.source "ShowToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/tools/ShowToast;->showMsg(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/tools/ShowToast$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/smalife/tools/ShowToast$1;->val$str:Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/smalife/tools/ShowToast$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/smalife/tools/ShowToast$1;->val$str:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smalife/tools/ShowToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    return-void
.end method
