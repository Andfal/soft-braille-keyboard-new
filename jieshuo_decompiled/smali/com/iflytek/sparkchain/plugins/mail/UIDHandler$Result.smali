.class Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/plugins/mail/UIDHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Result"
.end annotation


# instance fields
.field delArray:[J

.field newArray:[J


# direct methods
.method constructor <init>([J[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Result;->newArray:[J

    iput-object p2, p0, Lcom/iflytek/sparkchain/plugins/mail/UIDHandler$Result;->delArray:[J

    return-void
.end method
