.class Lcom/smalife/db/SmaDao$1;
.super Ljava/lang/Object;
.source "SmaDao.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/db/SmaDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/db/SmaDao;


# direct methods
.method constructor <init>(Lcom/smalife/db/SmaDao;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/db/SmaDao$1;->this$0:Lcom/smalife/db/SmaDao;

    .line 1046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2
    .param p1, "pre"    # Ljava/lang/Integer;
    .param p2, "next"    # Ljava/lang/Integer;

    .prologue
    .line 1049
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1050
    const/4 v0, 0x1

    .line 1054
    :goto_0
    return v0

    .line 1051
    :cond_0
    if-ne p2, p1, :cond_1

    .line 1052
    const/4 v0, 0x0

    goto :goto_0

    .line 1054
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/smalife/db/SmaDao$1;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
