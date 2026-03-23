.class Lcom/day/BigModelNew$Choices;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/day/BigModelNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Choices"
.end annotation


# instance fields
.field text:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/day/BigModelNew$Text;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/day/BigModelNew;


# direct methods
.method constructor <init>(Lcom/day/BigModelNew;)V
    .locals 0

    iput-object p1, p0, Lcom/day/BigModelNew$Choices;->this$0:Lcom/day/BigModelNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
