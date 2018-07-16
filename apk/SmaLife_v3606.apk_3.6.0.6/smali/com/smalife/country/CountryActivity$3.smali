.class Lcom/smalife/country/CountryActivity$3;
.super Ljava/lang/Object;
.source "CountryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smalife/country/CountryActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/country/CountryActivity;


# direct methods
.method constructor <init>(Lcom/smalife/country/CountryActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/country/CountryActivity$3;->this$0:Lcom/smalife/country/CountryActivity;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/smalife/country/CountryActivity$3;->this$0:Lcom/smalife/country/CountryActivity;

    invoke-virtual {v0}, Lcom/smalife/country/CountryActivity;->finish()V

    .line 158
    return-void
.end method
