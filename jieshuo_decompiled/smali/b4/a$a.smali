.class Lb4/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:S

.field c:S


# direct methods
.method constructor <init>(JSS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lb4/a$a;->a:J

    iput-short p3, p0, Lb4/a$a;->b:S

    iput-short p4, p0, Lb4/a$a;->c:S

    return-void
.end method
