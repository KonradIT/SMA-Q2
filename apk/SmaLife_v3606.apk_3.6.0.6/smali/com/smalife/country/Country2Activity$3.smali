.class Lcom/smalife/country/Country2Activity$3;
.super Ljava/lang/Object;
.source "Country2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/country/Country2Activity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/country/Country2Activity;


# direct methods
.method constructor <init>(Lcom/smalife/country/Country2Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/country/Country2Activity$3;->this$0:Lcom/smalife/country/Country2Activity;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/smalife/country/Country2Activity$3;->this$0:Lcom/smalife/country/Country2Activity;

    invoke-virtual {v0}, Lcom/smalife/country/Country2Activity;->finish()V

    .line 159
    return-void
.end method
