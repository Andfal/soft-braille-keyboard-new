.class public Lf/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lf/h;

.field public final b:Ljava/lang/String;

.field public c:Lg/l;

.field public d:Lf/h;


# direct methods
.method public constructor <init>(Lf/h;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a$a;->a:Lf/h;

    iput-object p2, p0, Lf/a$a;->b:Ljava/lang/String;

    return-void
.end method
