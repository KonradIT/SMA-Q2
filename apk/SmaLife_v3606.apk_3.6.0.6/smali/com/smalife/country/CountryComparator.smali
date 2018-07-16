.class public Lcom/smalife/country/CountryComparator;
.super Ljava/lang/Object;
.source "CountryComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/smalife/country/CountrySortModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/smalife/country/CountrySortModel;Lcom/smalife/country/CountrySortModel;)I
    .locals 2
    .param p1, "o1"    # Lcom/smalife/country/CountrySortModel;
    .param p2, "o2"    # Lcom/smalife/country/CountrySortModel;

    .prologue
    .line 33
    iget-object v0, p1, Lcom/smalife/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/smalife/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    const/4 v0, -0x1

    .line 43
    :goto_0
    return v0

    .line 37
    :cond_1
    iget-object v0, p1, Lcom/smalife/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/smalife/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 43
    :cond_3
    iget-object v0, p1, Lcom/smalife/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    iget-object v1, p2, Lcom/smalife/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/smalife/country/CountrySortModel;

    check-cast p2, Lcom/smalife/country/CountrySortModel;

    invoke-virtual {p0, p1, p2}, Lcom/smalife/country/CountryComparator;->compare(Lcom/smalife/country/CountrySortModel;Lcom/smalife/country/CountrySortModel;)I

    move-result v0

    return v0
.end method
