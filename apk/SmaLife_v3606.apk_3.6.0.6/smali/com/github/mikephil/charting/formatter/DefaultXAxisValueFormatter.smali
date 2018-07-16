.class public Lcom/github/mikephil/charting/formatter/DefaultXAxisValueFormatter;
.super Ljava/lang/Object;
.source "DefaultXAxisValueFormatter.java"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/XAxisValueFormatter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getXValue(Ljava/lang/String;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;
    .locals 0
    .param p1, "original"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 14
    return-object p1
.end method
