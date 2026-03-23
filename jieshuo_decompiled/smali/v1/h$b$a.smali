.class Lv1/h$b$a;
.super Lv1/h$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv1/h$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv1/h<",
        "TK;TV;>.d<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lv1/h$b;


# direct methods
.method constructor <init>(Lv1/h$b;)V
    .locals 0

    iput-object p1, p0, Lv1/h$b$a;->e:Lv1/h$b;

    iget-object p1, p1, Lv1/h$b;->a:Lv1/h;

    invoke-direct {p0, p1}, Lv1/h$d;-><init>(Lv1/h;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lv1/h$d;->a()Lv1/h$e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lv1/h$b$a;->b()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
