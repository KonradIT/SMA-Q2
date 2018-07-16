.class Lcom/smalife/country/Country2Activity$1;
.super Ljava/lang/Object;
.source "Country2Activity.java"

# interfaces
.implements Lcom/smalife/country/SideBar$OnTouchingLetterChangedListener;


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
    iput-object p1, p0, Lcom/smalife/country/Country2Activity$1;->this$0:Lcom/smalife/country/Country2Activity;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchingLetterChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/smalife/country/Country2Activity$1;->this$0:Lcom/smalife/country/Country2Activity;

    invoke-static {v1}, Lcom/smalife/country/Country2Activity;->access$0(Lcom/smalife/country/Country2Activity;)Lcom/smalife/country/CountrySortAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smalife/country/CountrySortAdapter;->getPositionForSection(I)I

    move-result v0

    .line 127
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/smalife/country/Country2Activity$1;->this$0:Lcom/smalife/country/Country2Activity;

    invoke-static {v1}, Lcom/smalife/country/Country2Activity;->access$1(Lcom/smalife/country/Country2Activity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 131
    :cond_0
    return-void
.end method
