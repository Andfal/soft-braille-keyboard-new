.class Lv1/h$c$a;
.super Lv1/h$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv1/h$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv1/h<",
        "TK;TV;>.d<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lv1/h$c;


# direct methods
.method constructor <init>(Lv1/h$c;)V
    .locals 0

    iput-object p1, p0, Lv1/h$c$a;->e:Lv1/h$c;

    iget-object p1, p1, Lv1/h$c;->a:Lv1/h;

    invoke-direct {p0, p1}, Lv1/h$d;-><init>(Lv1/h;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lv1/h$d;->a()Lv1/h$e;

    move-result-object v0

    iget-object v0, v0, Lv1/h$e;->f:Ljava/lang/Object;

    return-object v0
.end method
