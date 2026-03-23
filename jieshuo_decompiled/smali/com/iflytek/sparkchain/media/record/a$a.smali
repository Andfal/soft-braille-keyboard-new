.class public Lcom/iflytek/sparkchain/media/record/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/media/record/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:I

.field final synthetic e:Lcom/iflytek/sparkchain/media/record/a;


# direct methods
.method public constructor <init>(Lcom/iflytek/sparkchain/media/record/a;JJII)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/record/a$a;->e:Lcom/iflytek/sparkchain/media/record/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/iflytek/sparkchain/media/record/a$a;->b:J

    iput-wide p4, p0, Lcom/iflytek/sparkchain/media/record/a$a;->c:J

    iput p6, p0, Lcom/iflytek/sparkchain/media/record/a$a;->d:I

    iput p7, p0, Lcom/iflytek/sparkchain/media/record/a$a;->a:I

    return-void
.end method
