.class Lcom/smalife/country/CountryActivity$1;
.super Ljava/lang/Object;
.source "CountryActivity.java"

# interfaces
.implements Lcom/smalife/country/SideBar$OnTouchingLetterChangedListener;


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
    iput-object p1, p0, Lcom/smalife/country/CountryActivity$1;->this$0:Lcom/smalife/country/CountryActivity;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchingLetterChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v1, p0, Lcom/smalife/country/CountryActivity$1;->this$0:Lcom/smalife/country/CountryActivity;

    invoke-static {v1}, Lcom/smalife/country/CountryActivity;->access$0(Lcom/smalife/country/CountryActivity;)Lcom/smalife/country/CountrySortAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smalife/country/CountrySortAdapter;->getPositionForSection(I)I

    move-result v0

    .line 126
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/smalife/country/CountryActivity$1;->this$0:Lcom/smalife/country/CountryActivity;

    invoke-static {v1}, Lcom/smalife/country/CountryActivity;->access$1(Lcom/smalife/country/CountryActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 130
    :cond_0
    return-void
.end method
